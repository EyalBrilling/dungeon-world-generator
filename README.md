# dungeon-world-generator

A python pddl problems generator for the dungeon-world domain

## Batch generation

Call generator_batch_called.sh to generate 5 problems with different diffuclty
The arguments are:

``` txt
1) Mean degree of graph
2) Number of classes and obstacles types
3) Number of portals
```

Will result at the following 5 pddl files:

``` txt
1) Easy level with 10 nodes,5 treasure and 5 obstacle.
2) Medium level with 50 nodes,10 treasure and 40 obstacles
3) Medium level with 50 nodes,40 treasures and 10 obstacles
4) Medium level with 50 nodes,40 treasures and 40 obstacles
5) Huge level with 150 nodes,100 treasures and 100 obstacles
```

For example:

``` shell
./generate_dungeons.sh <mean_degree> <num_classes> <num_portals>
```

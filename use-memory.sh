#!/bin/bash

# Specify the desired memory usage in megabytes
target_memory_mb=1000

# Run the Node.js script
node -e "const array = []; const megabyte = 1024 * 1024; let targetMemory = $target_memory_mb; while (true) { array.push(Buffer.alloc(megabyte)); const usedMemory = process.memoryUsage().heapUsed / megabyte; if (usedMemory >= targetMemory) { console.log('Reached the target memory usage of', usedMemory, 'MB'); break; }}" 

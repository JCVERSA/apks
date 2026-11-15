package com.aliyun.utils;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ThreadManager {
    public static ExecutorService threadPool = Executors.newCachedThreadPool();
}

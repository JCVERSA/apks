package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

public interface t extends ExecutorService {
    r submit(Callable callable);
}

package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

public interface pm5 extends ExecutorService {
    im5 submit(Callable callable);
}

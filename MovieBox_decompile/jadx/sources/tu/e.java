package tu;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public abstract class e {

    public static final ThreadPoolExecutor f72837a;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f72837a = new ThreadPoolExecutor(iAvailableProcessors + 1, (iAvailableProcessors * 2) + 1, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue());
    }
}

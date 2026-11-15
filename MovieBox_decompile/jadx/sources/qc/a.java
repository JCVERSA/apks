package qc;

import com.google.firebase.messaging.threads.ThreadPriority;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;

public interface a {
    ExecutorService a(ThreadFactory threadFactory, ThreadPriority threadPriority);
}

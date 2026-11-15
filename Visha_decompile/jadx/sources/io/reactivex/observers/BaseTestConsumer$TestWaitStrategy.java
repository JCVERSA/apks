package io.reactivex.observers;

public enum BaseTestConsumer$TestWaitStrategy implements Runnable {
    SPIN {
        @Override
        public void run() {
        }
    },
    YIELD {
        @Override
        public void run() {
            Thread.yield();
        }
    },
    SLEEP_1MS {
        @Override
        public void run() {
            BaseTestConsumer$TestWaitStrategy.sleep(1);
        }
    },
    SLEEP_10MS {
        @Override
        public void run() {
            BaseTestConsumer$TestWaitStrategy.sleep(10);
        }
    },
    SLEEP_100MS {
        @Override
        public void run() {
            BaseTestConsumer$TestWaitStrategy.sleep(100);
        }
    },
    SLEEP_1000MS {
        @Override
        public void run() {
            BaseTestConsumer$TestWaitStrategy.sleep(1000);
        }
    };

    public static void sleep(int i) {
        try {
            Thread.sleep(i);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public abstract void run();
}

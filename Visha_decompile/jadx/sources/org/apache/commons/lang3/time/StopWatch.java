package org.apache.commons.lang3.time;

import java.util.Objects;
import java.util.concurrent.TimeUnit;

public class StopWatch {
    private static final long NANO_2_MILLIS = 1000000;
    private final String message;
    private State runningState;
    private SplitState splitState;
    private long startTimeMillis;
    private long startTimeNanos;
    private long stopTimeMillis;
    private long stopTimeNanos;

    public enum SplitState {
        SPLIT,
        UNSPLIT
    }

    public enum State {
        RUNNING {
            @Override
            public boolean isStarted() {
                return true;
            }

            @Override
            public boolean isStopped() {
                return false;
            }

            @Override
            public boolean isSuspended() {
                return false;
            }
        },
        STOPPED {
            @Override
            public boolean isStarted() {
                return false;
            }

            @Override
            public boolean isStopped() {
                return true;
            }

            @Override
            public boolean isSuspended() {
                return false;
            }
        },
        SUSPENDED {
            @Override
            public boolean isStarted() {
                return true;
            }

            @Override
            public boolean isStopped() {
                return false;
            }

            @Override
            public boolean isSuspended() {
                return true;
            }
        },
        UNSTARTED {
            @Override
            public boolean isStarted() {
                return false;
            }

            @Override
            public boolean isStopped() {
                return true;
            }

            @Override
            public boolean isSuspended() {
                return false;
            }
        };

        public abstract boolean isStarted();

        public abstract boolean isStopped();

        public abstract boolean isSuspended();
    }

    public StopWatch() {
        this(null);
    }

    public static StopWatch create() {
        return new StopWatch();
    }

    public static StopWatch createStarted() {
        StopWatch stopWatch = new StopWatch();
        stopWatch.start();
        return stopWatch;
    }

    public String formatSplitTime() {
        return DurationFormatUtils.formatDurationHMS(getSplitTime());
    }

    public String formatTime() {
        return DurationFormatUtils.formatDurationHMS(getTime());
    }

    public String getMessage() {
        return this.message;
    }

    public long getNanoTime() {
        long jNanoTime;
        long j;
        State state = this.runningState;
        if (state == State.STOPPED || state == State.SUSPENDED) {
            jNanoTime = this.stopTimeNanos;
            j = this.startTimeNanos;
        } else {
            if (state == State.UNSTARTED) {
                return 0L;
            }
            if (state != State.RUNNING) {
                throw new IllegalStateException("Illegal running state has occurred.");
            }
            jNanoTime = System.nanoTime();
            j = this.startTimeNanos;
        }
        return jNanoTime - j;
    }

    public long getSplitNanoTime() {
        if (this.splitState == SplitState.SPLIT) {
            return this.stopTimeNanos - this.startTimeNanos;
        }
        throw new IllegalStateException("Stopwatch must be split to get the split time.");
    }

    public long getSplitTime() {
        return getSplitNanoTime() / 1000000;
    }

    public long getStartTime() {
        if (this.runningState != State.UNSTARTED) {
            return this.startTimeMillis;
        }
        throw new IllegalStateException("Stopwatch has not been started");
    }

    public long getStopTime() {
        if (this.runningState != State.UNSTARTED) {
            return this.stopTimeMillis;
        }
        throw new IllegalStateException("Stopwatch has not been started");
    }

    public long getTime() {
        return getNanoTime() / 1000000;
    }

    public boolean isStarted() {
        return this.runningState.isStarted();
    }

    public boolean isStopped() {
        return this.runningState.isStopped();
    }

    public boolean isSuspended() {
        return this.runningState.isSuspended();
    }

    public void reset() {
        this.runningState = State.UNSTARTED;
        this.splitState = SplitState.UNSPLIT;
    }

    public void resume() {
        if (this.runningState != State.SUSPENDED) {
            throw new IllegalStateException("Stopwatch must be suspended to resume. ");
        }
        this.startTimeNanos += System.nanoTime() - this.stopTimeNanos;
        this.runningState = State.RUNNING;
    }

    public void split() {
        if (this.runningState != State.RUNNING) {
            throw new IllegalStateException("Stopwatch is not running. ");
        }
        this.stopTimeNanos = System.nanoTime();
        this.splitState = SplitState.SPLIT;
    }

    public void start() {
        State state = this.runningState;
        if (state == State.STOPPED) {
            throw new IllegalStateException("Stopwatch must be reset before being restarted. ");
        }
        if (state != State.UNSTARTED) {
            throw new IllegalStateException("Stopwatch already started. ");
        }
        this.startTimeNanos = System.nanoTime();
        this.startTimeMillis = System.currentTimeMillis();
        this.runningState = State.RUNNING;
    }

    public void stop() {
        State state = this.runningState;
        State state2 = State.RUNNING;
        if (state != state2 && state != State.SUSPENDED) {
            throw new IllegalStateException("Stopwatch is not running. ");
        }
        if (state == state2) {
            this.stopTimeNanos = System.nanoTime();
            this.stopTimeMillis = System.currentTimeMillis();
        }
        this.runningState = State.STOPPED;
    }

    public void suspend() {
        if (this.runningState != State.RUNNING) {
            throw new IllegalStateException("Stopwatch must be running to suspend. ");
        }
        this.stopTimeNanos = System.nanoTime();
        this.stopTimeMillis = System.currentTimeMillis();
        this.runningState = State.SUSPENDED;
    }

    public String toSplitString() {
        String string = Objects.toString(this.message, "");
        String splitTime = formatSplitTime();
        if (string.isEmpty()) {
            return splitTime;
        }
        return string + " " + splitTime;
    }

    public String toString() {
        String string = Objects.toString(this.message, "");
        String time = formatTime();
        if (string.isEmpty()) {
            return time;
        }
        return string + " " + time;
    }

    public void unsplit() {
        if (this.splitState != SplitState.SPLIT) {
            throw new IllegalStateException("Stopwatch has not been split. ");
        }
        this.splitState = SplitState.UNSPLIT;
    }

    public StopWatch(String str) {
        this.runningState = State.UNSTARTED;
        this.splitState = SplitState.UNSPLIT;
        this.message = str;
    }

    public long getTime(TimeUnit timeUnit) {
        return timeUnit.convert(getNanoTime(), TimeUnit.NANOSECONDS);
    }
}

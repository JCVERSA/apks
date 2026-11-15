package org.apache.commons.lang3.concurrent;

import defpackage.wk5;
import java.util.EnumMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public class EventCountCircuitBreaker extends AbstractCircuitBreaker<Integer> {
    private static final Map<AbstractCircuitBreaker.State, StateStrategy> STRATEGY_MAP = createStrategyMap();
    private final AtomicReference<CheckIntervalData> checkIntervalData;
    private final long closingInterval;
    private final int closingThreshold;
    private final long openingInterval;
    private final int openingThreshold;

    public static class CheckIntervalData {
        private final long checkIntervalStart;
        private final int eventCount;

        public CheckIntervalData(int i, long j) {
            this.eventCount = i;
            this.checkIntervalStart = j;
        }

        public long getCheckIntervalStart() {
            return this.checkIntervalStart;
        }

        public int getEventCount() {
            return this.eventCount;
        }

        public CheckIntervalData increment(int i) {
            return i == 0 ? this : new CheckIntervalData(getEventCount() + i, getCheckIntervalStart());
        }
    }

    public static abstract class StateStrategy {
        private StateStrategy() {
        }

        public abstract long fetchCheckInterval(EventCountCircuitBreaker eventCountCircuitBreaker);

        public boolean isCheckIntervalFinished(EventCountCircuitBreaker eventCountCircuitBreaker, CheckIntervalData checkIntervalData, long j) {
            return j - checkIntervalData.getCheckIntervalStart() > fetchCheckInterval(eventCountCircuitBreaker);
        }

        public abstract boolean isStateTransition(EventCountCircuitBreaker eventCountCircuitBreaker, CheckIntervalData checkIntervalData, CheckIntervalData checkIntervalData2);
    }

    public static class StateStrategyClosed extends StateStrategy {
        private StateStrategyClosed() {
            super();
        }

        @Override
        public long fetchCheckInterval(EventCountCircuitBreaker eventCountCircuitBreaker) {
            return eventCountCircuitBreaker.getOpeningInterval();
        }

        @Override
        public boolean isStateTransition(EventCountCircuitBreaker eventCountCircuitBreaker, CheckIntervalData checkIntervalData, CheckIntervalData checkIntervalData2) {
            return checkIntervalData2.getEventCount() > eventCountCircuitBreaker.getOpeningThreshold();
        }
    }

    public static class StateStrategyOpen extends StateStrategy {
        private StateStrategyOpen() {
            super();
        }

        @Override
        public long fetchCheckInterval(EventCountCircuitBreaker eventCountCircuitBreaker) {
            return eventCountCircuitBreaker.getClosingInterval();
        }

        @Override
        public boolean isStateTransition(EventCountCircuitBreaker eventCountCircuitBreaker, CheckIntervalData checkIntervalData, CheckIntervalData checkIntervalData2) {
            return checkIntervalData2.getCheckIntervalStart() != checkIntervalData.getCheckIntervalStart() && checkIntervalData.getEventCount() < eventCountCircuitBreaker.getClosingThreshold();
        }
    }

    public EventCountCircuitBreaker(int i, long j, TimeUnit timeUnit, int i2, long j2, TimeUnit timeUnit2) {
        this.checkIntervalData = new AtomicReference<>(new CheckIntervalData(0, 0L));
        this.openingThreshold = i;
        this.openingInterval = timeUnit.toNanos(j);
        this.closingThreshold = i2;
        this.closingInterval = timeUnit2.toNanos(j2);
    }

    private void changeStateAndStartNewCheckInterval(AbstractCircuitBreaker.State state) {
        changeState(state);
        this.checkIntervalData.set(new CheckIntervalData(0, nanoTime()));
    }

    private static Map<AbstractCircuitBreaker.State, StateStrategy> createStrategyMap() {
        EnumMap enumMap = new EnumMap(AbstractCircuitBreaker.State.class);
        enumMap.put(AbstractCircuitBreaker.State.CLOSED, new StateStrategyClosed());
        enumMap.put(AbstractCircuitBreaker.State.OPEN, new StateStrategyOpen());
        return enumMap;
    }

    private CheckIntervalData nextCheckIntervalData(int i, CheckIntervalData checkIntervalData, AbstractCircuitBreaker.State state, long j) {
        return stateStrategy(state).isCheckIntervalFinished(this, checkIntervalData, j) ? new CheckIntervalData(i, j) : checkIntervalData.increment(i);
    }

    private boolean performStateCheck(int i) {
        AbstractCircuitBreaker.State stateOppositeState;
        CheckIntervalData checkIntervalData;
        CheckIntervalData checkIntervalDataNextCheckIntervalData;
        do {
            long jNanoTime = nanoTime();
            stateOppositeState = this.state.get();
            checkIntervalData = this.checkIntervalData.get();
            checkIntervalDataNextCheckIntervalData = nextCheckIntervalData(i, checkIntervalData, stateOppositeState, jNanoTime);
        } while (!updateCheckIntervalData(checkIntervalData, checkIntervalDataNextCheckIntervalData));
        if (stateStrategy(stateOppositeState).isStateTransition(this, checkIntervalData, checkIntervalDataNextCheckIntervalData)) {
            stateOppositeState = stateOppositeState.oppositeState();
            changeStateAndStartNewCheckInterval(stateOppositeState);
        }
        return !AbstractCircuitBreaker.isOpen(stateOppositeState);
    }

    private static StateStrategy stateStrategy(AbstractCircuitBreaker.State state) {
        return STRATEGY_MAP.get(state);
    }

    private boolean updateCheckIntervalData(CheckIntervalData checkIntervalData, CheckIntervalData checkIntervalData2) {
        return checkIntervalData == checkIntervalData2 || wk5.a(this.checkIntervalData, checkIntervalData, checkIntervalData2);
    }

    @Override
    public boolean checkState() {
        return performStateCheck(0);
    }

    @Override
    public void close() {
        super.close();
        this.checkIntervalData.set(new CheckIntervalData(0, nanoTime()));
    }

    public long getClosingInterval() {
        return this.closingInterval;
    }

    public int getClosingThreshold() {
        return this.closingThreshold;
    }

    public long getOpeningInterval() {
        return this.openingInterval;
    }

    public int getOpeningThreshold() {
        return this.openingThreshold;
    }

    public long nanoTime() {
        return System.nanoTime();
    }

    @Override
    public void open() {
        super.open();
        this.checkIntervalData.set(new CheckIntervalData(0, nanoTime()));
    }

    @Override
    public boolean incrementAndCheckState(Integer num) {
        return performStateCheck(num.intValue());
    }

    public boolean incrementAndCheckState() {
        return incrementAndCheckState((Integer) 1);
    }

    public EventCountCircuitBreaker(int i, long j, TimeUnit timeUnit, int i2) {
        this(i, j, timeUnit, i2, j, timeUnit);
    }

    public EventCountCircuitBreaker(int i, long j, TimeUnit timeUnit) {
        this(i, j, timeUnit, i);
    }
}

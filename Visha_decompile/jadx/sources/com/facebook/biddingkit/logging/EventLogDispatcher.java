package com.facebook.biddingkit.logging;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import com.facebook.biddingkit.http.client.HttpResponse;
import com.facebook.biddingkit.http.util.RequestSender;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

class EventLogDispatcher {
    private static final String EVENTS_KEY = "events";
    private static volatile EventLogDispatcher INSTANCE = null;
    private static final int MAX_EVENTS_LOAD = 10;
    private static final String TAG = "EventLogDispatcher";
    private static final int TIMEOUT_MS = 2000;
    private static final String TOKENS_KEY = "tokens";
    private LoggingConfig mConfiguration;
    private int mDelayTime;
    private final Handler mDispatchHandler = new Handler(Looper.getMainLooper());
    private final ThreadPoolExecutor mDispatcher = new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
    private final Runnable mDispatchRunnable = new Runnable() {
        @Override
        public void run() {
            EventLogDispatcher.this.dispatchEventsInternal();
            EventLogDispatcher.this.mDispatchHandler.postDelayed(EventLogDispatcher.this.mDispatchHandlerRunnable, EventLogDispatcher.this.mDelayTime);
        }
    };
    private final Runnable mDispatchHandlerRunnable = new Runnable() {
        @Override
        public void run() {
            if (EventLogDispatcher.this.mDispatcher.getQueue().isEmpty()) {
                EventLogDispatcher.this.mDispatcher.execute(EventLogDispatcher.this.mDispatchRunnable);
            }
        }
    };

    private EventLogDispatcher() {
    }

    @SuppressLint({"CatchGeneralException"})
    public void dispatchEventsInternal() {
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject = new JSONObject();
        try {
            List<EventLog> rows = EventLogDatabaseAdapter.getRows(10);
            if (rows != null && !rows.isEmpty()) {
                Iterator<EventLog> it = rows.iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next().getJsonData());
                }
                jSONObject.put(TOKENS_KEY, BiddingStaticEnvironmentData.getCachedJsonData());
                jSONObject.put(EVENTS_KEY, jSONArray);
                HttpResponse httpResponsePost = RequestSender.post(this.mConfiguration.getDispatcherUrl(), 2000, jSONObject.toString());
                if (httpResponsePost == null || httpResponsePost.getStatus() != 200) {
                    this.mDelayTime = this.mConfiguration.getNetworkErrorCycleSparationMs();
                } else {
                    this.mDelayTime = this.mConfiguration.getCycleSeparationMs();
                }
                Iterator<EventLog> it2 = rows.iterator();
                while (it2.hasNext()) {
                    EventLogDatabaseAdapter.deleteEntry(it2.next().getDatabaseId());
                }
            }
        } catch (Throwable th) {
            BkLog.d(TAG, "Failed dispatching events", th);
        }
    }

    public static EventLogDispatcher getInstance() {
        if (INSTANCE == null) {
            synchronized (EventLogDispatcher.class) {
                try {
                    if (INSTANCE == null) {
                        INSTANCE = new EventLogDispatcher();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return INSTANCE;
    }

    public static void startDispatcher(LoggingConfig loggingConfig) {
        getInstance().setLoggingConfig(loggingConfig);
        getInstance().startDispatching();
    }

    public void setLoggingConfig(LoggingConfig loggingConfig) {
        this.mConfiguration = loggingConfig;
        this.mDelayTime = loggingConfig.getCycleSeparationMs();
    }

    public void startDispatching() {
        this.mDispatchHandler.postDelayed(this.mDispatchHandlerRunnable, this.mDelayTime);
    }
}

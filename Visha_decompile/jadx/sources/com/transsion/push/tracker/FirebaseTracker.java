package com.transsion.push.tracker;

import android.os.Bundle;

public class FirebaseTracker {
    public static FirebaseTracker a;
    public static ITracker b;

    public static FirebaseTracker getInstance() {
        if (a == null) {
            a = new FirebaseTracker();
        }
        return a;
    }

    public void a(Tracker.KEY key, Bundle bundle) {
        ITracker iTracker;
        if (bundle == null || (iTracker = b) == null) {
            return;
        }
        iTracker.track(key, bundle);
    }

    public void setListener(ITracker iTracker) {
        b = iTracker;
    }
}

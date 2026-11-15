package com.transsion.push.tracker;

import android.os.Bundle;

public class FirebaseTracker {

    private static FirebaseTracker f48881a;

    private static ITracker f48882b;

    private FirebaseTracker() {
    }

    public static FirebaseTracker getInstance() {
        if (f48881a == null) {
            f48881a = new FirebaseTracker();
        }
        return f48881a;
    }

    void a(Tracker.KEY key, Bundle bundle) {
        ITracker iTracker;
        if (bundle == null || (iTracker = f48882b) == null) {
            return;
        }
        iTracker.track(key, bundle);
    }

    public void setListener(ITracker iTracker) {
        f48882b = iTracker;
    }
}

package com.transsion.push.tracker;

import android.os.Bundle;

public interface ITracker {
    void track(Tracker.KEY key, Bundle bundle);
}

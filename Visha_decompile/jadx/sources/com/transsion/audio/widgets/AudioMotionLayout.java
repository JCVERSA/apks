package com.transsion.audio.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.core.app.NotificationCompat;
import com.transsion.audio.R;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\f\b\u0016\u0018\u0000 %2\u00020\u0001:\u0001%B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0015\u001a\u00020\u000b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0010H\u0017¢\u0006\u0004\b\u0015\u0010\u0013J\u0017\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u0016\u0010\u001e\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010 \u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010\u001fR\u0016\u0010!\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010#\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$¨\u0006&"}, d2 = {"Lcom/transsion/audio/widgets/AudioMotionLayout;", "Landroidx/constraintlayout/motion/widget/MotionLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "getStateString", "()Ljava/lang/String;", "", "animated", "Lzfb;", "setBeingAnimated", "(Z)V", "Landroid/view/MotionEvent;", "ev", "onInterceptTouchEvent", "(Landroid/view/MotionEvent;)Z", NotificationCompat.CATEGORY_EVENT, "onTouchEvent", "", "visibility", "setVisibility", "(I)V", "", "alpha", "setAlpha", "(F)V", "mInitX", "F", "mInitY", "mTouchSlop", "I", "beingAnimated", "Z", "Companion", "audio_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class AudioMotionLayout extends MotionLayout {
    private static final String TAG = "AudioMotionLayout";
    private boolean beingAnimated;
    private float mInitX;
    private float mInitY;
    private int mTouchSlop;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioMotionLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        y45.j(context, "context");
        this.mTouchSlop = 10;
    }

    private final String getStateString() {
        int currentState = getCurrentState();
        if (currentState == R.id.base_state) {
            return "base_state";
        }
        if (currentState == R.id.previous) {
            return "previous";
        }
        return currentState == R.id.next ? ES6Iterator.NEXT_METHOD : "unknown_state";
    }

    /* JADX WARN: Code duplicated, block: B:17:0x004b  */
    @Override
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        y45.j(ev, "ev");
        int actionMasked = ev.getActionMasked();
        if (actionMasked == 0) {
            com.transsion.audio.a.c(getClass() + ".simpleName onInterceptTouchEvent down state=" + getStateString());
            this.mInitY = ev.getY();
            this.mInitX = ev.getX();
            requestDisallowInterceptTouchEvent(true);
        } else if (actionMasked == 1) {
            requestDisallowInterceptTouchEvent(true);
        } else if (actionMasked == 2) {
            float fAbs = Math.abs(ev.getX() - this.mInitX);
            float fAbs2 = Math.abs(ev.getY() - this.mInitY);
            if (fAbs > this.mTouchSlop && fAbs * 2 > fAbs2) {
                MotionEvent motionEventObtain = MotionEvent.obtain(ev);
                motionEventObtain.setAction(0);
                dispatchTouchEvent(motionEventObtain);
                onTouchEvent(motionEventObtain);
                return true;
            }
            requestDisallowInterceptTouchEvent(false);
        } else if (actionMasked == 3) {
            requestDisallowInterceptTouchEvent(true);
        }
        return super.onInterceptTouchEvent(ev);
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent event) {
        Integer numValueOf = event != null ? Integer.valueOf(event.getAction()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            com.transsion.audio.a.c(getClass() + ".simpleName onTouchEvent down state=" + getStateString());
            if (this.beingAnimated) {
                return false;
            }
            super.onTouchEvent(event);
        }
        return super.onTouchEvent(event);
    }

    @Override
    public void setAlpha(float alpha) {
        super.setAlpha(alpha);
        Log.d(TAG, "setAlpha " + alpha);
    }

    public void setBeingAnimated(boolean animated) {
        this.beingAnimated = animated;
    }

    @Override
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        Log.d(TAG, "setVisibility " + visibility);
    }
}

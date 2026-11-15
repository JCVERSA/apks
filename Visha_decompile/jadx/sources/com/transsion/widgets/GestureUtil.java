package com.transsion.widgets;

import android.annotation.SuppressLint;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import com.transsion.widgets.GestureUtil;

public class GestureUtil {
    public static final int GESTURE_ACTION_DOWN = 8;
    public static final int GESTURE_ACTION_UP = 9;
    public static final int GESTURE_ANY = 0;
    public static final int GESTURE_CLICK = 5;
    public static final int GESTURE_DOWN = 4;
    public static final int GESTURE_LEFT = 1;
    public static final int GESTURE_LONGPRESS = 6;
    public static final int GESTURE_RIGHT = 2;
    public static final int GESTURE_SCROLL = 7;
    public static final int GESTURE_UP = 3;
    public static final int MIN_SLIDE_DETECTOR_DISTANCE = 80;
    private static float x1;
    private static float x2;
    private static float y1;
    private static float y2;

    public interface ScorllToListener {
        void scrollTo(int i);
    }

    public static boolean lambda$scrollGesture$0(ScorllToListener scorllToListener, GestureDetector gestureDetector, View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            x1 = motionEvent.getX();
            y1 = motionEvent.getY();
        }
        if (motionEvent.getAction() == 1) {
            x2 = motionEvent.getX();
            float y = motionEvent.getY();
            y2 = y;
            float f = y1;
            if (f - y > 50.0f) {
                scorllToListener.scrollTo(3);
            } else if (y - f > 50.0f) {
                scorllToListener.scrollTo(4);
            } else {
                float f2 = x1;
                float f3 = x2;
                if (f2 - f3 > 50.0f) {
                    scorllToListener.scrollTo(1);
                } else if (f3 - f2 > 50.0f) {
                    scorllToListener.scrollTo(2);
                }
            }
        }
        if (motionEvent.getAction() == 2) {
            x2 = motionEvent.getX();
            float y3 = motionEvent.getY();
            y2 = y3;
            float f4 = y1;
            if (f4 - y3 > 50.0f) {
                scorllToListener.scrollTo(3);
            } else if (y3 - f4 > 50.0f) {
                scorllToListener.scrollTo(4);
            } else {
                float f5 = x1;
                float f6 = x2;
                if (f5 - f6 > 50.0f) {
                    scorllToListener.scrollTo(1);
                } else if (f6 - f5 > 50.0f) {
                    scorllToListener.scrollTo(2);
                }
            }
        }
        return !gestureDetector.onTouchEvent(motionEvent);
    }

    public static boolean lambda$scrollGestureExactly$1(ScorllToListener scorllToListener, GestureDetector gestureDetector, View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            scorllToListener.scrollTo(8);
            x1 = motionEvent.getX();
            y1 = motionEvent.getY();
        }
        if (motionEvent.getAction() == 1) {
            x2 = motionEvent.getX();
            float y = motionEvent.getY();
            y2 = y;
            if (((int) Math.abs(y1 - y)) > ((int) Math.abs(x1 - x2))) {
                float f = y1;
                float f2 = y2;
                if (f - f2 > 50.0f) {
                    scorllToListener.scrollTo(3);
                } else if (f2 - f > 50.0f) {
                    scorllToListener.scrollTo(4);
                }
            } else {
                float f3 = x1;
                float f4 = x2;
                if (f3 - f4 > 50.0f) {
                    scorllToListener.scrollTo(1);
                } else if (f4 - f3 > 50.0f) {
                    scorllToListener.scrollTo(2);
                }
            }
            scorllToListener.scrollTo(9);
        }
        motionEvent.getAction();
        return !gestureDetector.onTouchEvent(motionEvent);
    }

    public static boolean lambda$scrollGesturesForAudio$2(GestureDetector gestureDetector, View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            x1 = motionEvent.getX();
            y1 = motionEvent.getY();
            requestDisallowInterceptTouchEvent(view, true);
        } else if (motionEvent.getAction() == 2) {
            x2 = motionEvent.getX();
            y2 = motionEvent.getY();
            requestDisallowInterceptTouchEvent(view, Math.abs(x1 - x2) > Math.abs(y1 - y2));
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            requestDisallowInterceptTouchEvent(view, false);
        }
        return gestureDetector.onTouchEvent(motionEvent);
    }

    private static void requestDisallowInterceptTouchEvent(View view, boolean z) {
        ViewParent parent = view.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public static void scrollGesture(View view, final ScorllToListener scorllToListener) {
        final GestureDetector gestureDetector = new GestureDetector(view.getContext(), new GestureDetector.SimpleOnGestureListener() {
            @Override
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (motionEvent == null || motionEvent2 == null) {
                    return super.onFling(motionEvent, motionEvent2, f, f2);
                }
                scorllToListener.scrollTo(0);
                return super.onFling(motionEvent, motionEvent2, f, f2);
            }

            @Override
            public void onLongPress(MotionEvent motionEvent) {
                scorllToListener.scrollTo(6);
                super.onLongPress(motionEvent);
            }

            @Override
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                scorllToListener.scrollTo(7);
                return super.onScroll(motionEvent, motionEvent2, f, f2);
            }

            @Override
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                scorllToListener.scrollTo(5);
                return super.onSingleTapConfirmed(motionEvent);
            }
        });
        view.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return GestureUtil.lambda$scrollGesture$0(scorllToListener, gestureDetector, view2, motionEvent);
            }
        });
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public static void scrollGestureExactly(View view, final ScorllToListener scorllToListener) {
        final GestureDetector gestureDetector = new GestureDetector(view.getContext(), new GestureDetector.SimpleOnGestureListener() {
            @Override
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (motionEvent == null || motionEvent2 == null) {
                    return super.onFling(motionEvent, motionEvent2, f, f2);
                }
                scorllToListener.scrollTo(0);
                return super.onFling(motionEvent, motionEvent2, f, f2);
            }

            @Override
            public void onLongPress(MotionEvent motionEvent) {
                scorllToListener.scrollTo(6);
                super.onLongPress(motionEvent);
            }

            @Override
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                scorllToListener.scrollTo(7);
                return super.onScroll(motionEvent, motionEvent2, f, f2);
            }

            @Override
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                scorllToListener.scrollTo(5);
                return super.onSingleTapConfirmed(motionEvent);
            }
        });
        view.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return GestureUtil.lambda$scrollGestureExactly$1(scorllToListener, gestureDetector, view2, motionEvent);
            }
        });
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public static void scrollGesturesForAudio(View view, final ScorllToListener scorllToListener) {
        final GestureDetector gestureDetector = new GestureDetector(view.getContext(), new GestureDetector.SimpleOnGestureListener() {
            @Override
            public boolean onContextClick(MotionEvent motionEvent) {
                return super.onContextClick(motionEvent);
            }

            @Override
            public boolean onDoubleTap(MotionEvent motionEvent) {
                return super.onDoubleTap(motionEvent);
            }

            @Override
            public boolean onDoubleTapEvent(MotionEvent motionEvent) {
                return super.onDoubleTapEvent(motionEvent);
            }

            @Override
            public boolean onDown(MotionEvent motionEvent) {
                return motionEvent.getPointerCount() == 1;
            }

            /* JADX WARN: Code duplicated, block: B:26:0x007c  */
            @Override
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (motionEvent == null || motionEvent2 == null) {
                    return false;
                }
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                float x3 = motionEvent2.getX() - x;
                float y3 = motionEvent2.getY() - y;
                double d = x3;
                if (((int) Math.sqrt(Math.pow(y3, 2.0d) + Math.pow(d, 2.0d))) >= 80) {
                    double dTan = Math.tan(0.39269908169872414d) * d;
                    double dTan2 = d * Math.tan(1.1780972450961724d);
                    int i = 3;
                    if (x3 > 0.0f) {
                        double dAbs = Math.abs(y3);
                        if (dAbs < dTan || dAbs < dTan2) {
                            i = 2;
                        } else if (y3 > 0.0f) {
                            i = 4;
                        }
                    } else {
                        double dAbs2 = Math.abs(dTan);
                        double dAbs3 = Math.abs(dTan2);
                        double dAbs4 = Math.abs(y3);
                        if (dAbs4 < dAbs2 || dAbs4 < dAbs3) {
                            i = 1;
                        } else if (y3 > 0.0f) {
                            i = 4;
                        }
                    }
                    scorllToListener.scrollTo(i);
                }
                return true;
            }

            @Override
            public void onLongPress(MotionEvent motionEvent) {
                scorllToListener.scrollTo(6);
                super.onLongPress(motionEvent);
            }

            @Override
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return super.onScroll(motionEvent, motionEvent2, f, f2);
            }

            @Override
            public void onShowPress(MotionEvent motionEvent) {
                super.onShowPress(motionEvent);
            }

            @Override
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                scorllToListener.scrollTo(5);
                return super.onSingleTapConfirmed(motionEvent);
            }
        });
        gestureDetector.setIsLongpressEnabled(false);
        view.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return GestureUtil.lambda$scrollGesturesForAudio$2(gestureDetector, view2, motionEvent);
            }
        });
    }
}

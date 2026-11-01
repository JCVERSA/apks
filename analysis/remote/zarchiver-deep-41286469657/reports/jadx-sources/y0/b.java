package y0;

import android.content.Context;
import android.content.ContextWrapper;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Toast;

public final class b extends ContextWrapper {

    public final Toast f2301a;

    public y0.a f2302b;

    public final class a extends ContextWrapper {
        public a(Context context) {
            super(context);
        }

        @Override
        public final Object getSystemService(String str) {
            if (!"window".equals(str)) {
                return super.getSystemService(str);
            }
            return b.this.new WindowManagerC0042b((WindowManager) getBaseContext().getSystemService(str));
        }
    }

    public final class WindowManagerC0042b implements WindowManager {

        public final WindowManager f2304a;

        public WindowManagerC0042b(WindowManager windowManager) {
            this.f2304a = windowManager;
        }

        @Override
        public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
            try {
                Log.d("WindowManagerWrapper", "WindowManager's addView(view, params) has been hooked.");
                this.f2304a.addView(view, layoutParams);
            } catch (WindowManager.BadTokenException e2) {
                Log.i("WindowManagerWrapper", e2.getMessage());
                b bVar = b.this;
                y0.a aVar = bVar.f2302b;
                if (aVar != null) {
                    Toast toast = bVar.f2301a;
                    aVar.getClass();
                }
            } catch (Throwable th) {
                Log.e("WindowManagerWrapper", "[addView]", th);
            }
        }

        @Override
        public final Display getDefaultDisplay() {
            return this.f2304a.getDefaultDisplay();
        }

        @Override
        public final void removeView(View view) {
            this.f2304a.removeView(view);
        }

        @Override
        public final void removeViewImmediate(View view) {
            this.f2304a.removeViewImmediate(view);
        }

        @Override
        public final void updateViewLayout(View view, ViewGroup.LayoutParams layoutParams) {
            this.f2304a.updateViewLayout(view, layoutParams);
        }
    }

    public b(Context context, Toast toast) {
        super(context);
        this.f2301a = toast;
    }

    @Override
    public final Context getApplicationContext() {
        return new a(getBaseContext().getApplicationContext());
    }
}

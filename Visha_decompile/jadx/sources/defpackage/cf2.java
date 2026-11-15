package defpackage;

import android.net.Uri;
import android.view.KeyEvent;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.state.PathFormatException;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.a;
import com.yandex.div.data.VariableMutationException;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivAction;
import com.yandex.div2.DivDisappearAction;
import com.yandex.div2.DivVisibilityAction;
import org.json.JSONObject;

public class cf2 {
    private static final String AUTHORITY_HIDE_TOOLTIP = "hide_tooltip";
    private static final String AUTHORITY_SET_VARIABLE = "set_variable";
    private static final String AUTHORITY_SHOW_TOOLTIP = "show_tooltip";
    private static final String AUTHORITY_SWITCH_STATE = "set_state";
    private static final String AUTHORITY_TIMER = "timer";
    private static final String AUTHORITY_VIDEO = "video";
    private static final String PARAM_ACTION = "action";
    private static final String PARAM_ID = "id";
    private static final String PARAM_MULTIPLE = "multiple";
    private static final String PARAM_STATE_ID = "state_id";
    private static final String PARAM_TEMPORARY = "temporary";
    private static final String PARAM_VARIABLE_NAME = "name";
    private static final String PARAM_VARIABLE_VALUE = "value";
    private static final String SCHEME_DIV_ACTION = "div-action";

    public static oj3 a(Div2View div2View, String str) {
        a bindingContext;
        if (str == null) {
            return null;
        }
        KeyEvent.Callback callbackA = occ.a(div2View, str);
        if (!(callbackA instanceof mk2) || (bindingContext = ((mk2) callbackA).getBindingContext()) == null) {
            return null;
        }
        return bindingContext.b();
    }

    public final boolean b(String str, Uri uri, sv2 sv2Var, oj3 oj3Var) {
        if (uri != null && SCHEME_DIV_ACTION.equals(uri.getScheme())) {
            return c(str, uri, sv2Var, oj3Var);
        }
        return false;
    }

    public final boolean c(String str, Uri uri, sv2 sv2Var, oj3 oj3Var) {
        Div2View div2View;
        String authority = uri.getAuthority();
        if (AUTHORITY_SWITCH_STATE.equals(authority)) {
            String queryParameter = uri.getQueryParameter(PARAM_STATE_ID);
            if (queryParameter == null) {
                xi.i("state_id param is required");
                return false;
            }
            try {
                sv2Var.switchToState(DivStatePath.o(queryParameter), uri.getBooleanQueryParameter(PARAM_TEMPORARY, true));
                return true;
            } catch (PathFormatException e) {
                xi.j("Invalid format of " + queryParameter, e);
                return false;
            }
        }
        if (AUTHORITY_SHOW_TOOLTIP.equals(authority)) {
            String queryParameter2 = uri.getQueryParameter("id");
            if (queryParameter2 == null) {
                xi.i("id param is required");
                return false;
            }
            sv2Var.showTooltip(queryParameter2, uri.getBooleanQueryParameter(PARAM_MULTIPLE, false));
            return true;
        }
        if (AUTHORITY_HIDE_TOOLTIP.equals(authority)) {
            String queryParameter3 = uri.getQueryParameter("id");
            if (queryParameter3 == null) {
                xi.i("id param is required");
                return false;
            }
            sv2Var.hideTooltip(queryParameter3);
            return true;
        }
        if (AUTHORITY_SET_VARIABLE.equals(authority)) {
            String queryParameter4 = uri.getQueryParameter("name");
            if (queryParameter4 == null) {
                xi.i("name param is required");
                return false;
            }
            String queryParameter5 = uri.getQueryParameter("value");
            if (queryParameter5 == null) {
                xi.i("value param unspecified for " + queryParameter4);
                return false;
            }
            div2View = sv2Var instanceof Div2View ? (Div2View) sv2Var : null;
            if (div2View == null) {
                xi.i("Variable '" + queryParameter4 + "' mutation failed! View(" + sv2Var.getClass().getSimpleName() + ") not supports variables!");
                return false;
            }
            try {
                bob.a(div2View, queryParameter4, queryParameter5, oj3Var);
                return true;
            } catch (VariableMutationException e2) {
                xi.j("Variable '" + queryParameter4 + "' mutation failed: " + e2.getMessage(), e2);
                return false;
            }
        }
        if (!AUTHORITY_TIMER.equals(authority)) {
            if (!"video".equals(authority)) {
                if (com.yandex.div.core.view2.items.a.a(authority)) {
                    return com.yandex.div.core.view2.items.a.e(uri, sv2Var, oj3Var);
                }
                if (ey9.a(authority)) {
                    return ey9.e(uri, sv2Var);
                }
                return false;
            }
            div2View = sv2Var instanceof Div2View ? (Div2View) sv2Var : null;
            if (div2View == null) {
                xi.i("Handler view is not instance of Div2View");
                return false;
            }
            String queryParameter6 = uri.getQueryParameter("id");
            if (queryParameter6 == null) {
                xi.i("Video action has no id param");
                return false;
            }
            String queryParameter7 = uri.getQueryParameter(PARAM_ACTION);
            if (queryParameter7 != null) {
                return div2View.applyVideoCommand(queryParameter6, queryParameter7, oj3Var);
            }
            xi.i("Video action has no action param");
            return false;
        }
        String queryParameter8 = uri.getQueryParameter("id");
        if (queryParameter8 == null) {
            xi.i("id param is required");
            return false;
        }
        String queryParameter9 = uri.getQueryParameter(PARAM_ACTION);
        if (queryParameter9 == null) {
            xi.i("action param is required");
            return false;
        }
        div2View = sv2Var instanceof Div2View ? (Div2View) sv2Var : null;
        if (div2View != null) {
            div2View.applyTimerCommand(queryParameter8, queryParameter9);
            return true;
        }
        xi.i("Timer '" + queryParameter8 + "' state changing failed! View(" + sv2Var.getClass().getSimpleName() + ") not supports timers!");
        return false;
    }

    public boolean getUseActionUid() {
        return false;
    }

    public boolean handleAction(DivAction divAction, sv2 sv2Var, oj3 oj3Var) {
        Div2View div2View = (Div2View) sv2Var;
        oj3 oj3VarA = a(div2View, divAction.h);
        if (oj3VarA == null) {
            oj3VarA = oj3Var;
        }
        if (wf2.a(divAction, sv2Var, oj3VarA)) {
            return true;
        }
        Expression expression = divAction.k;
        Uri uri = expression != null ? (Uri) expression.b(oj3Var) : null;
        return ji2.a(uri, sv2Var) ? ji2.d(divAction, div2View, oj3VarA) : b(divAction.h, uri, sv2Var, oj3VarA);
    }

    public boolean handleActionUrl(@Nullable Uri uri, @NonNull sv2 sv2Var) {
        return handleActionUrl(uri, sv2Var, sv2Var.getExpressionResolver());
    }

    @CallSuper
    public boolean handleActionWithReason(@NonNull DivAction divAction, @NonNull sv2 sv2Var, @NonNull oj3 oj3Var, @NonNull String str) {
        return handleAction(divAction, sv2Var, oj3Var);
    }

    public void handlePayload(@NonNull JSONObject jSONObject) {
    }

    public final boolean handleActionUrl(@Nullable Uri uri, @NonNull sv2 sv2Var, @NonNull oj3 oj3Var) {
        return handleActionUrl(null, uri, sv2Var, oj3Var);
    }

    @CallSuper
    public boolean handleActionWithReason(@NonNull DivAction divAction, @NonNull sv2 sv2Var, @NonNull oj3 oj3Var, @NonNull String str, @NonNull String str2) {
        return handleAction(divAction, sv2Var, oj3Var, str);
    }

    public final boolean handleActionUrl(@Nullable String str, @Nullable Uri uri, @NonNull sv2 sv2Var, @NonNull oj3 oj3Var) {
        oj3 oj3VarA = a((Div2View) sv2Var, str);
        if (oj3VarA != null) {
            oj3Var = oj3VarA;
        }
        return b(str, uri, sv2Var, oj3Var);
    }

    @CallSuper
    public boolean handleAction(@NonNull DivAction divAction, @NonNull sv2 sv2Var, @NonNull oj3 oj3Var, @NonNull String str) {
        return handleAction(divAction, sv2Var, oj3Var);
    }

    @CallSuper
    public boolean handleAction(@NonNull DivVisibilityAction divVisibilityAction, @NonNull sv2 sv2Var, @NonNull oj3 oj3Var) {
        return handleAction((wp2) divVisibilityAction, sv2Var, oj3Var);
    }

    @CallSuper
    public boolean handleAction(@NonNull DivDisappearAction divDisappearAction, @NonNull sv2 sv2Var, @NonNull oj3 oj3Var) {
        return handleAction((wp2) divDisappearAction, sv2Var, oj3Var);
    }

    @CallSuper
    public boolean handleAction(@NonNull wp2 wp2Var, @NonNull sv2 sv2Var, @NonNull oj3 oj3Var) {
        Div2View div2View = (Div2View) sv2Var;
        oj3 oj3VarA = a(div2View, wp2Var.e());
        if (oj3VarA == null) {
            oj3VarA = oj3Var;
        }
        if (wf2.c(wp2Var, sv2Var, oj3VarA)) {
            return true;
        }
        Uri uri = wp2Var.getUrl() != null ? (Uri) wp2Var.getUrl().b(oj3Var) : null;
        if (ji2.a(uri, sv2Var)) {
            return ji2.f(wp2Var, div2View, oj3VarA);
        }
        return b(wp2Var.e(), uri, sv2Var, oj3Var);
    }

    @CallSuper
    public boolean handleAction(@NonNull DivVisibilityAction divVisibilityAction, @NonNull sv2 sv2Var, @NonNull oj3 oj3Var, @NonNull String str) {
        return handleAction(divVisibilityAction, sv2Var, oj3Var);
    }

    @CallSuper
    public boolean handleAction(@NonNull DivDisappearAction divDisappearAction, @NonNull sv2 sv2Var, @NonNull oj3 oj3Var, @NonNull String str) {
        return handleAction(divDisappearAction, sv2Var, oj3Var);
    }

    @CallSuper
    public boolean handleAction(@NonNull wp2 wp2Var, @NonNull sv2 sv2Var, @NonNull oj3 oj3Var, @NonNull String str) {
        return handleAction(wp2Var, sv2Var, oj3Var);
    }
}

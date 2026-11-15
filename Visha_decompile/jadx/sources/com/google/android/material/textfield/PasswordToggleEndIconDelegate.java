package com.google.android.material.textfield;

import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import com.google.android.material.R;

class PasswordToggleEndIconDelegate extends EndIconDelegate {

    @Nullable
    private EditText editText;
    private int iconResId;
    private final View.OnClickListener onIconClickListener;

    public PasswordToggleEndIconDelegate(@NonNull EndCompoundLayout endCompoundLayout, @DrawableRes int i) {
        super(endCompoundLayout);
        this.iconResId = R.drawable.design_password_eye;
        this.onIconClickListener = new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.lambda$new$0(view);
            }
        };
        if (i != 0) {
            this.iconResId = i;
        }
    }

    private boolean hasPasswordTransformation() {
        EditText editText = this.editText;
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    private static boolean isInputTypePassword(EditText editText) {
        return editText != null && (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224);
    }

    public void lambda$new$0(View view) {
        EditText editText = this.editText;
        if (editText == null) {
            return;
        }
        int selectionEnd = editText.getSelectionEnd();
        if (hasPasswordTransformation()) {
            this.editText.setTransformationMethod(null);
        } else {
            this.editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
        if (selectionEnd >= 0) {
            this.editText.setSelection(selectionEnd);
        }
        refreshIconState();
    }

    @Override
    public void beforeEditTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        refreshIconState();
    }

    @Override
    @StringRes
    public int getIconContentDescriptionResId() {
        return R.string.password_toggle_content_description;
    }

    @Override
    @DrawableRes
    public int getIconDrawableResId() {
        return this.iconResId;
    }

    @Override
    public View.OnClickListener getOnIconClickListener() {
        return this.onIconClickListener;
    }

    @Override
    public boolean isIconCheckable() {
        return true;
    }

    @Override
    public boolean isIconChecked() {
        return !hasPasswordTransformation();
    }

    @Override
    public void onEditTextAttached(@Nullable EditText editText) {
        this.editText = editText;
        refreshIconState();
    }

    @Override
    public void setUp() {
        if (isInputTypePassword(this.editText)) {
            this.editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }

    @Override
    public void tearDown() {
        EditText editText = this.editText;
        if (editText != null) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}

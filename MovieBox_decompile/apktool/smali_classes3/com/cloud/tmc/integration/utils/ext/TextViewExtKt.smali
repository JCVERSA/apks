.class public final Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\r\n\u0002\u0008\u0002\u001a\n\u0010\u000b\u001a\u00020\u000c*\u00020\u0003\u001a#\u0010\r\u001a\u00020\u000c*\u00020\u00032\u0012\u0010\u000e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00100\u000f\"\u00020\u0010\u00a2\u0006\u0002\u0010\u0011\u001aL\u0010\u0012\u001a\u00020\u000c*\u00020\u00032\u0012\u0010\u0013\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u000f\"\u00020\u00032!\u0008\u0004\u0010\u0014\u001a\u001b\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u000f\u0012\u0004\u0012\u00020\u00010\u0015\u00a2\u0006\u0002\u0008\u0016H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017\u001a#\u0010\u0018\u001a\u00020\u000c*\u00020\u00032\u0012\u0010\u0013\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u000f\"\u00020\u0003\u00a2\u0006\u0002\u0010\u0019\u001a\n\u0010\u001a\u001a\u00020\u0001*\u00020\u0003\u001a\n\u0010\u001b\u001a\u00020\u0001*\u00020\u0003\u001a\u0014\u0010\u001c\u001a\u00020\u000c*\u00020\u00032\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u001a\n\u0010\u001f\u001a\u00020\u000c*\u00020\u0003\"*\u0010\u0002\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00018\u00c6\u0002@\u00c6\u0002X\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0002\u0010\u0004\"\u0004\u0008\u0005\u0010\u0006\"\u0016\u0010\u0007\u001a\u00020\u0008*\u00020\u00038\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006 "
    }
    d2 = {
        "value",
        "",
        "isPasswordVisible",
        "Landroid/widget/TextView;",
        "(Landroid/widget/TextView;)Z",
        "setPasswordVisible",
        "(Landroid/widget/TextView;Z)V",
        "textString",
        "",
        "getTextString",
        "(Landroid/widget/TextView;)Ljava/lang/String;",
        "addUnderline",
        "",
        "enableWhenAllChecked",
        "checkBoxes",
        "",
        "Landroid/widget/CheckBox;",
        "(Landroid/widget/TextView;[Landroid/widget/CheckBox;)V",
        "enableWhenOtherTextChanged",
        "textViews",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroid/widget/TextView;[Landroid/widget/TextView;Lkotlin/jvm/functions/Function1;)V",
        "enableWhenOtherTextNotEmpty",
        "(Landroid/widget/TextView;[Landroid/widget/TextView;)V",
        "isTextEmpty",
        "isTextNotEmpty",
        "setMultilingualText",
        "multilingualText",
        "",
        "transparentHighlightColor",
        "com.cloud.tmc.integration"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public static synthetic a(Landroid/widget/TextView;[Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt;->enableWhenAllChecked$lambda$7$lambda$6(Landroid/widget/TextView;[Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final addUnderline(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final varargs enableWhenAllChecked(Landroid/widget/TextView;[Landroid/widget/CheckBox;)V
    .locals 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "checkBoxes"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    :goto_0
    if-ge v2, v0, :cond_1

    .line 15
    .line 16
    aget-object v3, p1, v2

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    move v0, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x1

    .line 30
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 31
    .line 32
    .line 33
    array-length v0, p1

    .line 34
    :goto_2
    if-ge v1, v0, :cond_2

    .line 35
    .line 36
    aget-object v2, p1, v1

    .line 37
    .line 38
    new-instance v3, Lcom/cloud/tmc/integration/utils/ext/b;

    .line 39
    .line 40
    invoke-direct {v3, p0, p1}, Lcom/cloud/tmc/integration/utils/ext/b;-><init>(Landroid/widget/TextView;[Landroid/widget/CheckBox;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    return-void
.end method

.method private static final enableWhenAllChecked$lambda$7$lambda$6(Landroid/widget/TextView;[Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    const-string p2, "$this_enableWhenAllChecked"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "$checkBoxes"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    array-length p2, p1

    .line 12
    const/4 p3, 0x0

    .line 13
    move v0, p3

    .line 14
    :goto_0
    if-ge v0, p2, :cond_1

    .line 15
    .line 16
    aget-object v1, p1, v0

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p3, 0x1

    .line 29
    :goto_1
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static final enableWhenOtherTextChanged(Landroid/widget/TextView;[Landroid/widget/TextView;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "[",
            "Landroid/widget/TextView;",
            "Lkotlin/jvm/functions/Function1<",
            "-[",
            "Landroid/widget/TextView;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "textViews"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "block"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 27
    .line 28
    .line 29
    array-length v0, p1

    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_0
    if-ge v1, v0, :cond_0

    .line 32
    .line 33
    aget-object v2, p1, v1

    .line 34
    .line 35
    new-instance v3, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt$enableWhenOtherTextChanged$lambda$3$$inlined$doAfterTextChanged$1;

    .line 36
    .line 37
    invoke-direct {v3, p0, p2, p1}, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt$enableWhenOtherTextChanged$lambda$3$$inlined$doAfterTextChanged$1;-><init>(Landroid/widget/TextView;Lkotlin/jvm/functions/Function1;[Landroid/widget/TextView;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method public static final varargs enableWhenOtherTextNotEmpty(Landroid/widget/TextView;[Landroid/widget/TextView;)V
    .locals 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "textViews"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    array-length v0, p1

    .line 12
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, [Landroid/widget/TextView;

    .line 17
    .line 18
    array-length v0, p1

    .line 19
    const/4 v1, 0x0

    .line 20
    move v2, v1

    .line 21
    :goto_0
    if-ge v2, v0, :cond_1

    .line 22
    .line 23
    aget-object v3, p1, v2

    .line 24
    .line 25
    invoke-static {v3}, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt;->isTextNotEmpty(Landroid/widget/TextView;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    move v0, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x1

    .line 37
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 38
    .line 39
    .line 40
    array-length v0, p1

    .line 41
    :goto_2
    if-ge v1, v0, :cond_2

    .line 42
    .line 43
    aget-object v2, p1, v1

    .line 44
    .line 45
    new-instance v3, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt$enableWhenOtherTextNotEmpty$$inlined$enableWhenOtherTextChanged$1;

    .line 46
    .line 47
    invoke-direct {v3, p0, p1}, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt$enableWhenOtherTextNotEmpty$$inlined$enableWhenOtherTextChanged$1;-><init>(Landroid/widget/TextView;[Landroid/widget/TextView;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    return-void
.end method

.method public static final getTextString(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static final isPasswordVisible(Landroid/widget/TextView;)Z
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    xor-int/lit8 p0, p0, 0x1

    .line 19
    .line 20
    return p0
.end method

.method public static final isTextEmpty(Landroid/widget/TextView;)Z
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return p0
.end method

.method public static final isTextNotEmpty(Landroid/widget/TextView;)Z
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-lez p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return p0
.end method

.method public static final setMultilingualText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v1, 0x1a

    .line 12
    .line 13
    if-lt v0, v1, :cond_3

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/utils/ext/a;->a(Landroid/text/BidiFormatter;Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 34
    :goto_1
    if-eqz p1, :cond_2

    .line 35
    .line 36
    const/4 p1, 0x7

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/4 p1, 0x6

    .line 39
    :goto_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setTextDirection(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_4

    .line 43
    :cond_3
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    const p1, 0x800005

    .line 50
    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    const p1, 0x800003

    .line 54
    .line 55
    .line 56
    :goto_3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 57
    .line 58
    .line 59
    :goto_4
    return-void
.end method

.method public static final setPasswordVisible(Landroid/widget/TextView;Z)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static final transparentHighlightColor(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

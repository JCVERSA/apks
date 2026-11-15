.class public final synthetic Lcom/cloud/tmc/integration/utils/ext/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:[Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;[Landroid/widget/CheckBox;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/ext/b;->a:Landroid/widget/TextView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/ext/b;->b:[Landroid/widget/CheckBox;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/ext/b;->a:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/ext/b;->b:[Landroid/widget/CheckBox;

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt;->a(Landroid/widget/TextView;[Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

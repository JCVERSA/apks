.class public final synthetic Lw68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$a;


# instance fields
.field public final synthetic a:Lk78;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lk78;Landroid/content/Context;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw68;->a:Lk78;

    iput-object p2, p0, Lw68;->b:Landroid/content/Context;

    iput-boolean p3, p0, Lw68;->c:Z

    iput-boolean p4, p0, Lw68;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lw68;->a:Lk78;

    iget-object v1, p0, Lw68;->b:Landroid/content/Context;

    iget-boolean v2, p0, Lw68;->c:Z

    iget-boolean v3, p0, Lw68;->d:Z

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lk78;->w(Lk78;Landroid/content/Context;ZZLcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V

    return-void
.end method

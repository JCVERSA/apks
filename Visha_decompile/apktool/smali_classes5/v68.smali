.class public final synthetic Lv68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog$c;


# instance fields
.field public final synthetic a:Lk78;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lk78;Landroid/content/Context;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv68;->a:Lk78;

    iput-object p2, p0, Lv68;->b:Landroid/content/Context;

    iput-object p3, p0, Lv68;->c:Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;

    iput-boolean p4, p0, Lv68;->d:Z

    iput-boolean p5, p0, Lv68;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lv68;->a:Lk78;

    iget-object v1, p0, Lv68;->b:Landroid/content/Context;

    iget-object v2, p0, Lv68;->c:Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;

    iget-boolean v3, p0, Lv68;->d:Z

    iget-boolean v4, p0, Lv68;->e:Z

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lk78;->x(Lk78;Landroid/content/Context;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;ZZLandroid/view/View;)V

    return-void
.end method

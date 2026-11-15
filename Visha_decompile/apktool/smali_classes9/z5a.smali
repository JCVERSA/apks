.class public final synthetic Lz5a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz5a;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lz5a;->b:Landroid/view/View;

    invoke-static {p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->v0(Landroid/view/View;)V

    return-void
.end method

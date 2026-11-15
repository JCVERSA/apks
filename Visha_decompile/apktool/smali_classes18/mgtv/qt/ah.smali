.class final Lmgtv/qt/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/app/Application;

.field private synthetic b:Ls4d;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ls4d;)V
    .locals 0

    iput-object p1, p0, Lmgtv/qt/ah;->a:Landroid/app/Application;

    iput-object p2, p0, Lmgtv/qt/ah;->b:Ls4d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lmgtv/qt/ah;->a:Landroid/app/Application;

    invoke-static {v0}, Lhld;->J(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgtv/qt/c;->h(Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lmgtv/qt/ah;->a:Landroid/app/Application;

    invoke-static {p0}, Lhld;->i(Landroid/content/Context;)V

    return-void
.end method

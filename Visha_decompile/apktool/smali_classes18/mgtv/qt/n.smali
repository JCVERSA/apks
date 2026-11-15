.class final Lmgtv/qt/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lmgtv/qt/n;->a:Ljava/lang/String;

    iput-object p2, p0, Lmgtv/qt/n;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lmgtv/qt/n;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lmgtv/qt/n;->a:Ljava/lang/String;

    iget-object v1, p0, Lmgtv/qt/n;->b:Ljava/lang/String;

    iget-boolean p0, p0, Lmgtv/qt/n;->c:Z

    invoke-static {v0, v1, p0}, Lmgtv/qt/i;->f(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

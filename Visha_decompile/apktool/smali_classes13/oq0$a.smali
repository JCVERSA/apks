.class public final Loq0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrc2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loq0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Ljq0;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Ljq0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loq0$a;->b:Ljq0;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Loq0$a;->c:Z

    iget-object p0, p0, Loq0$a;->b:Ljq0;

    invoke-interface {p0}, Ljq0;->cancel()V

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Loq0$a;->c:Z

    return p0
.end method

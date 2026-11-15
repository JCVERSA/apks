.class public final Lg94$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg94;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Ljava/lang/Boolean;
    .locals 0

    instance-of p0, p1, Lcom/trello/rxlifecycle3/OutsideLifecycleException;

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    invoke-static {p1}, Lre3;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lg94$a;->a(Ljava/lang/Throwable;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

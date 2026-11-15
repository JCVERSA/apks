.class public final synthetic Lpeh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lqeh;


# direct methods
.method public synthetic constructor <init>(Lqeh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpeh;->b:Lqeh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lpeh;->b:Lqeh;

    invoke-static {p0}, Lqeh;->a(Lqeh;)Loeh;

    move-result-object p0

    return-object p0
.end method

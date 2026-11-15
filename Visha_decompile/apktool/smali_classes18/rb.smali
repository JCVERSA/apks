.class public final Lrb;
.super Lkotlin/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lhk1;


# instance fields
.field private volatile _preHandler:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lhk1;->w1:Lhk1$b;

    invoke-direct {p0, v0}, Lkotlin/coroutines/a;-><init>(Lkotlin/coroutines/d$c;)V

    iput-object p0, p0, Lrb;->_preHandler:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public handleException(Lkotlin/coroutines/d;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

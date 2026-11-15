.class public final Lqi4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnk1;


# static fields
.field public static final b:Lqi4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqi4;

    invoke-direct {v0}, Lqi4;-><init>()V

    sput-object v0, Lqi4;->b:Lqi4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Lkotlin/coroutines/d;
    .locals 0

    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    return-object p0
.end method

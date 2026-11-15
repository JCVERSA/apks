.class public abstract Lcom/transsion/eventbus/LiveEventBus$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/eventbus/LiveEventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/transsion/eventbus/LiveEventBus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/eventbus/LiveEventBus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;-><init>(Len5;)V

    sput-object v0, Lcom/transsion/eventbus/LiveEventBus$a;->a:Lcom/transsion/eventbus/LiveEventBus;

    return-void
.end method

.method public static bridge synthetic a()Lcom/transsion/eventbus/LiveEventBus;
    .locals 1

    sget-object v0, Lcom/transsion/eventbus/LiveEventBus$a;->a:Lcom/transsion/eventbus/LiveEventBus;

    return-object v0
.end method

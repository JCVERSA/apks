.class public abstract Lqp8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll65;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqp8$a;
    }
.end annotation


# static fields
.field public static final b:Lqp8$a;


# instance fields
.field public final a:Lby6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lqp8$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqp8$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lqp8;->b:Lqp8$a;

    return-void
.end method

.method public constructor <init>(Lby6;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lqp8;->a:Lby6;

    return-void
.end method

.method public synthetic constructor <init>(Lby6;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lqp8;-><init>(Lby6;)V

    return-void
.end method


# virtual methods
.method public getName()Lby6;
    .locals 0

    iget-object p0, p0, Lqp8;->a:Lby6;

    return-object p0
.end method

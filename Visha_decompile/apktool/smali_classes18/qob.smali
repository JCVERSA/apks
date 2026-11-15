.class public final Lqob;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqob$a;
    }
.end annotation


# static fields
.field public static final b:Lqob$a;

.field public static final c:Lqob;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lqob$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqob$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lqob;->b:Lqob$a;

    new-instance v0, Lqob;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lqob;-><init>(Ljava/util/List;)V

    sput-object v0, Lqob;->c:Lqob;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqob;->a:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lqob;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic a()Lqob;
    .locals 1

    sget-object v0, Lqob;->c:Lqob;

    return-object v0
.end method

.class public final Lid9$b;
.super Lid9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lid9$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lid9$b;

    invoke-direct {v0}, Lid9$b;-><init>()V

    sput-object v0, Lid9$b;->a:Lid9$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lid9;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.class public final Lef8$i;
.super Lef8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# static fields
.field public static final a:Lef8$i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lef8$i;

    invoke-direct {v0}, Lef8$i;-><init>()V

    sput-object v0, Lef8$i;->a:Lef8$i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lef8;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

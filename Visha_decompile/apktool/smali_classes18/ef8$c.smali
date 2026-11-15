.class public final Lef8$c;
.super Lef8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lef8$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lef8$c;

    invoke-direct {v0}, Lef8$c;-><init>()V

    sput-object v0, Lef8$c;->a:Lef8$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lef8;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

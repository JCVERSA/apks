.class public final Lmc8$a;
.super Lmc8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmc8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lmc8$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmc8$a;

    invoke-direct {v0}, Lmc8$a;-><init>()V

    sput-object v0, Lmc8$a;->a:Lmc8$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmc8;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

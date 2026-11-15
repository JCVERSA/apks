.class public final Lnm6$a;
.super Lnm6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnm6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:Lnm6$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnm6$a;

    invoke-direct {v0}, Lnm6$a;-><init>()V

    sput-object v0, Lnm6$a;->b:Lnm6$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lnm6;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

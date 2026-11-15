.class public Lfreemarker/core/FMParser$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/FMParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lxk3;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lfreemarker/core/FMParser$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lfreemarker/core/FMParser$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/FMParser$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lfreemarker/core/FMParser$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lfreemarker/core/FMParser$b;->a:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lfreemarker/core/FMParser$b;)I
    .locals 0

    iget p0, p0, Lfreemarker/core/FMParser$b;->b:I

    return p0
.end method

.method public static synthetic d(Lfreemarker/core/FMParser$b;I)I
    .locals 0

    iput p1, p0, Lfreemarker/core/FMParser$b;->b:I

    return p1
.end method

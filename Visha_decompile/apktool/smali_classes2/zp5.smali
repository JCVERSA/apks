.class public final Lzp5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzp5$a;
    }
.end annotation


# static fields
.field public static final c:Lzp5;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzp5$a;

    invoke-direct {v0}, Lzp5$a;-><init>()V

    invoke-virtual {v0}, Lzp5$a;->a()Lzp5;

    move-result-object v0

    sput-object v0, Lzp5;->c:Lzp5;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzp5;->a:Ljava/lang/String;

    iput-object p2, p0, Lzp5;->b:Ljava/util/List;

    return-void
.end method

.method public static c()Lzp5$a;
    .locals 1

    new-instance v0, Lzp5$a;

    invoke-direct {v0}, Lzp5$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lzp5;->b:Ljava/util/List;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lzp5;->a:Ljava/lang/String;

    return-object p0
.end method

.class public final Lzl1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzl1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final c:Lzl1$b;

.field public static final d:Lzl1$b;

.field public static final e:Lzl1$b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lzl1$b;

    const-string v1, "ecImplicitlyCA"

    const-class v2, Lqqc;

    invoke-direct {v0, v1, v2}, Lzl1$b;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lzl1$b;->c:Lzl1$b;

    new-instance v0, Lzl1$b;

    const-string v1, "dhDefaultParams"

    const-class v2, Lnq1;

    invoke-direct {v0, v1, v2}, Lzl1$b;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lzl1$b;->d:Lzl1$b;

    new-instance v0, Lzl1$b;

    const-string v1, "dsaDefaultParams"

    const-class v2, Lhr1;

    invoke-direct {v0, v1, v2}, Lzl1$b;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lzl1$b;->e:Lzl1$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzl1$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lzl1$b;->b:Ljava/lang/Class;

    return-void
.end method

.method public static synthetic a(Lzl1$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lzl1$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lzl1$b;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lzl1$b;->b:Ljava/lang/Class;

    return-object p0
.end method

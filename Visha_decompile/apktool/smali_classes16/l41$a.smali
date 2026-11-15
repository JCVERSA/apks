.class public Ll41$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll41;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ll41$a;->a:Ljava/lang/String;

    iput-object v0, p0, Ll41$a;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Ll41$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ll41$a;->a:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Ll41$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ll41$a;->b:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ll41$a;->a:Ljava/lang/String;

    return-object p0
.end method

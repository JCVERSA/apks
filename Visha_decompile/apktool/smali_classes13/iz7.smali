.class public Liz7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Liz7;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Liz7;

    const-string v1, "https://framatube.org"

    const-string v2, "FramaTube"

    invoke-direct {v0, v1, v2}, Liz7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Liz7;->c:Liz7;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liz7;->a:Ljava/lang/String;

    iput-object p2, p0, Liz7;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Liz7;->a:Ljava/lang/String;

    return-object p0
.end method

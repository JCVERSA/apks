.class public final Lzn8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzn8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lzn8$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzn8$a;

    invoke-direct {v0}, Lzn8$a;-><init>()V

    sput-object v0, Lzn8$a;->a:Lzn8$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Lzn8;
    .locals 0

    const-string p0, "id"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lzn8$b;

    invoke-direct {p0, p1, p2}, Lzn8$b;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object p0
.end method

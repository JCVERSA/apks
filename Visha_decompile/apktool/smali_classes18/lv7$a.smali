.class public final Llv7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llv7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llv7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Llv7$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llv7$a;

    invoke-direct {v0}, Llv7$a;-><init>()V

    sput-object v0, Llv7$a;->a:Llv7$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    const-string p0, "packageFqName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

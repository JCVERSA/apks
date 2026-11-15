.class public final Lcom/transsion/onlinevideo/tiktok/repository/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/onlinevideo/tiktok/repository/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/transsion/onlinevideo/tiktok/repository/a$a$a;

.field public static final b:Lcom/transsion/onlinevideo/tiktok/repository/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/onlinevideo/tiktok/repository/a$a$a;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/tiktok/repository/a$a$a;-><init>()V

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/repository/a$a$a;->a:Lcom/transsion/onlinevideo/tiktok/repository/a$a$a;

    new-instance v0, Lcom/transsion/onlinevideo/tiktok/repository/a;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/tiktok/repository/a;-><init>()V

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/repository/a$a$a;->b:Lcom/transsion/onlinevideo/tiktok/repository/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/onlinevideo/tiktok/repository/a;
    .locals 0

    sget-object p0, Lcom/transsion/onlinevideo/tiktok/repository/a$a$a;->b:Lcom/transsion/onlinevideo/tiktok/repository/a;

    return-object p0
.end method

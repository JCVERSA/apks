.class public final Lcom/transsion/mediationads/manager/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mediationads/manager/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/transsion/mediationads/manager/b$a$a;

.field public static final b:Lcom/transsion/mediationads/manager/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mediationads/manager/b$a$a;

    invoke-direct {v0}, Lcom/transsion/mediationads/manager/b$a$a;-><init>()V

    sput-object v0, Lcom/transsion/mediationads/manager/b$a$a;->a:Lcom/transsion/mediationads/manager/b$a$a;

    new-instance v0, Lcom/transsion/mediationads/manager/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/mediationads/manager/b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/mediationads/manager/b$a$a;->b:Lcom/transsion/mediationads/manager/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/mediationads/manager/b;
    .locals 0

    sget-object p0, Lcom/transsion/mediationads/manager/b$a$a;->b:Lcom/transsion/mediationads/manager/b;

    return-object p0
.end method

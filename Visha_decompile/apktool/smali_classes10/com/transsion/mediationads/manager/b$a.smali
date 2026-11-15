.class public final Lcom/transsion/mediationads/manager/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mediationads/manager/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mediationads/manager/b$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/mediationads/manager/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/mediationads/manager/b;
    .locals 0

    sget-object p0, Lcom/transsion/mediationads/manager/b$a$a;->a:Lcom/transsion/mediationads/manager/b$a$a;

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/b$a$a;->a()Lcom/transsion/mediationads/manager/b;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lkw4;)V
    .locals 0

    const-string p0, "manager"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/transsion/mediationads/manager/b;->b:Lkw4;

    return-void
.end method

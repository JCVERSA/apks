.class public final Lcv9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liw4;


# static fields
.field public static final a:Lcv9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcv9;

    invoke-direct {v0}, Lcv9;-><init>()V

    sput-object v0, Lcv9;->a:Lcv9;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    invoke-virtual {p0}, Lcv9;->c()Lcom/transsion/mediationads/manager/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/a;->d()Z

    move-result p0

    return p0
.end method

.method public b()Z
    .locals 0

    invoke-virtual {p0}, Lcv9;->c()Lcom/transsion/mediationads/manager/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/a;->c()Z

    move-result p0

    return p0
.end method

.method public final c()Lcom/transsion/mediationads/manager/a;
    .locals 0

    sget-object p0, Lcom/transsion/mediationads/manager/a;->a:Lcom/transsion/mediationads/manager/a$a;

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/a$a;->a()Lcom/transsion/mediationads/manager/a;

    move-result-object p0

    return-object p0
.end method

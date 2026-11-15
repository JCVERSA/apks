.class public abstract Lcom/transsion/sysbar/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sysbar/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/transsion/sysbar/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/sysbar/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/sysbar/d;-><init>(Lxy6;)V

    sput-object v0, Lcom/transsion/sysbar/d$a;->a:Lcom/transsion/sysbar/d;

    return-void
.end method

.method public static bridge synthetic a()Lcom/transsion/sysbar/d;
    .locals 1

    sget-object v0, Lcom/transsion/sysbar/d$a;->a:Lcom/transsion/sysbar/d;

    return-object v0
.end method

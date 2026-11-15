.class public abstract Lcom/transsion/sysbar/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sysbar/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/transsion/sysbar/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/sysbar/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/sysbar/b;-><init>(Lr53;)V

    sput-object v0, Lcom/transsion/sysbar/b$a;->a:Lcom/transsion/sysbar/b;

    return-void
.end method

.method public static bridge synthetic a()Lcom/transsion/sysbar/b;
    .locals 1

    sget-object v0, Lcom/transsion/sysbar/b$a;->a:Lcom/transsion/sysbar/b;

    return-object v0
.end method

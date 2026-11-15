.class public abstract Lwt1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwt1$a;
    }
.end annotation


# static fields
.field public static final a:Lwt1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lwt1;->a()Lwt1;

    move-result-object v0

    sput-object v0, Lwt1;->a:Lwt1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lwt1;
    .locals 2

    const-string v0, "freemarker.debug.password"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lha9;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lwt1$a;

    invoke-direct {v0, v1}, Lwt1$a;-><init>(Lvt1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lqv8;

    invoke-direct {v0}, Lqv8;-><init>()V

    :goto_0
    return-object v0
.end method

.method public static b(Lfreemarker/template/Template;)V
    .locals 1

    sget-object v0, Lwt1;->a:Lwt1;

    invoke-virtual {v0, p0}, Lwt1;->c(Lfreemarker/template/Template;)V

    return-void
.end method

.method public static d(Lfreemarker/core/Environment;Ljava/lang/String;I)Z
    .locals 1

    sget-object v0, Lwt1;->a:Lwt1;

    invoke-virtual {v0, p0, p1, p2}, Lwt1;->e(Lfreemarker/core/Environment;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract c(Lfreemarker/template/Template;)V
.end method

.method public abstract e(Lfreemarker/core/Environment;Ljava/lang/String;I)Z
.end method

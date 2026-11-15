.class public final synthetic Lfpj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6a;


# static fields
.field public static final synthetic a:Lfpj;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lfpj;

    invoke-direct {v0}, Lfpj;-><init>()V

    sput-object v0, Lfpj;->a:Lfpj;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lxda;
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Liw8;->e(Landroid/os/Bundle;)Lxda;

    move-result-object p0

    return-object p0
.end method

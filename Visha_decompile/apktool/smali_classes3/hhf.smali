.class public final synthetic Lhhf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyrg;


# static fields
.field public static final synthetic a:Lhhf;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lhhf;

    invoke-direct {v0}, Lhhf;-><init>()V

    sput-object v0, Lhhf;->a:Lhhf;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lkwg;->a:Ljava/util/List;

    invoke-static {}, Lqdj;->c()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

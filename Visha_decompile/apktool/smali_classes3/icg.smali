.class public final Licg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;


# direct methods
.method public constructor <init>(Lhcg;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Licg;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Licg;->a:Lqyi;

    check-cast p0, Lkcg;

    invoke-virtual {p0}, Lkcg;->a()Lidg;

    move-result-object p0

    invoke-virtual {p0}, Lidg;->c()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

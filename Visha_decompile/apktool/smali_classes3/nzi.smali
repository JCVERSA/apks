.class public final synthetic Lnzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgzi;


# instance fields
.field public final synthetic a:Ltzi;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ltzi;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnzi;->a:Ltzi;

    iput-object p2, p0, Lnzi;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnzi;->a:Ltzi;

    iget-object p0, p0, Lnzi;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ltzi;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

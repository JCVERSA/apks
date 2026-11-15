.class public final synthetic Ldgg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Logg;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Logg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldgg;->a:Logg;

    iput-object p2, p0, Ldgg;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 1

    iget-object v0, p0, Ldgg;->a:Logg;

    iget-object p0, p0, Ldgg;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Logg;->c(Logg;Ljava/lang/String;Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Ln39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/material/search/SearchBar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/SearchBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln39;->b:Lcom/google/android/material/search/SearchBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Ln39;->b:Lcom/google/android/material/search/SearchBar;

    invoke-static {p0}, Lcom/google/android/material/search/SearchBar;->b(Lcom/google/android/material/search/SearchBar;)V

    return-void
.end method

.method public X(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

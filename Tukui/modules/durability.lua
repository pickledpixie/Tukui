hooksecurefunc(DurabilityFrame,"SetPoint",function(self,_,parent)
    if (parent == "MinimapCluster") or (parent == _G["MinimapCluster"]) then
        DurabilityFrame:ClearAllPoints()
		DurabilityFrame:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
--		DurabilityFrame:SetScale(0.6)
    end
end)

local function _setVisible(visible)
  ZO_Character:SetHidden(not visible)
  ZO_CharacterWindowStats:SetHidden(not visible)
  -- TODO toggle background visibility
end

local function _onOpenBank(eventCode, bankBag)
  if bankBag == BAG_BANK then
    _setVisible(true)
  end
end

local function _onExitBank(eventCode, bankBag)
  _setVisible(false)
end

local function _onOpenStore(eventCode)
  _setVisible(true)
end

local function _onExitStore(eventCode)
  _setVisible(false)
end

EVENT_MANAGER:RegisterForEvent("MyExampleEvent", EVENT_OPEN_BANK, _onOpenBank)
EVENT_MANAGER:RegisterForEvent("MyExampleEvent", EVENT_CLOSE_BANK, _onExitBank)
EVENT_MANAGER:RegisterForEvent("MyExampleEvent", EVENT_OPEN_STORE, _onOpenStore)
EVENT_MANAGER:RegisterForEvent("MyExampleEvent", EVENT_CLOSE_STORE, _onExitStore)

module InvitesHelper

  def this_invite_path
    event_invite_path(@invite.event_id, @invite)
  end

  def edit_this_invite_path
    edit_event_invite_path(@invite.event_id, @invite)
  end


end
